# frozen_string_literal: true

# SpaceX Interface Adapter
class SpacexGateway
  def launches(action)
    launches = Spacex::Client.new('launches', action).call

    return launch(launches, full: true) unless launches.is_a?(Array)

    launches.map! { |launch| launch(launch) }
  end

  def vehiacles(action, id)
    vehiacle = Spacex::Client.new('rockets', action, id).call

    vehiacle(vehiacle)
  end

  def launchpads(action, id)
    launchpad = Spacex::Client.new('launchpads', action, id).call

    launchpad(launchpad)
  end

  private

  def launch(launch, full: false)
    entity = Launch.new(
      name: launch&.name,
      patch: launch&.links&.patch&.small,
      liftoff: launch&.date_utc&.to_datetime
    )

    entity.vehiacle = vehiacles(:one, launch&.rocket) if full
    entity.launchpad = launchpads(:one, launch&.launchpad) if full

    entity
  end

  def vehiacle(vehiacle)
    Vehiacle.new(
      name: vehiacle&.name,
      image: vehiacle&.flickr_images&.sample
    )
  end

  def launchpad(launchpad)
    Launchpad.new(
      name: launchpad&.name
    )
  end
end
