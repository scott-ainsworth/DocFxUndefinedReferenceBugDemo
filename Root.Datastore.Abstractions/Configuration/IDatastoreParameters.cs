namespace Root.Datastore.Configuration;

/// <summary>
///   This interface defines an interface to inject the parameters required by
///   the <see cref="Datastore"/> module.
/// </summary>
public interface IDatastoreParameters {

	/// <summary>
	///   The database name.
	/// </summary>
	public string DatabaseName { get; }
}
