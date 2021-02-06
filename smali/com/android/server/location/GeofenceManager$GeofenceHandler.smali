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
.method private constructor <init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 408
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    .line 409
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Looper;Lcom/android/server/location/GeofenceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/GeofenceManager;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/location/GeofenceManager$1;

    .line 407
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GeofenceManager$GeofenceHandler;-><init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 414
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->access$100(Lcom/android/server/location/GeofenceManager;)V

    .line 417
    :cond_0
    return-void
.end method
