.class Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;
.super Ljava/lang/Object;
.source "GnssMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusChangedOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
        "Landroid/location/IGnssMeasurementsListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "status"    # I

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;->mStatus:I

    .line 151
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssMeasurementsListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    iget v0, p0, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;->mStatus:I

    invoke-interface {p1, v0}, Landroid/location/IGnssMeasurementsListener;->onStatusChanged(I)V

    .line 157
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    check-cast p1, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;->execute(Landroid/location/IGnssMeasurementsListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
