.class final Lcom/android/server/location/GeofenceManager$GeofenceHandler;
.super Landroid/os/Handler;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofenceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GeofenceManager;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    .line 462
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Z)V

    .line 463
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 467
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->access$200(Lcom/android/server/location/GeofenceManager;)V

    .line 473
    :goto_0
    return-void
.end method
