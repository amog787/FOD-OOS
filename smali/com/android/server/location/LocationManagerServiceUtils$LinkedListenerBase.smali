.class public abstract Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
.super Ljava/lang/Object;
.source "LocationManagerServiceUtils.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LinkedListenerBase"
.end annotation


# instance fields
.field protected final mCallerIdentity:Lcom/android/server/location/CallerIdentity;


# direct methods
.method constructor <init>(Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 73
    return-void
.end method


# virtual methods
.method public getCallerIdentity()Lcom/android/server/location/CallerIdentity;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    return-object v0
.end method

.method public linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 89
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0}, Lcom/android/server/location/CallerIdentity;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 101
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 105
    :goto_0
    return-void
.end method
