.class Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$1;
.super Landroid/os/Handler;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    .line 257
    iput-object p1, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$1;->this$0:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector$1;->this$0:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmGetLocSwitchData()Z

    move-result v0

    .line 263
    .local v0, "status":Z
    nop

    .line 269
    .end local v0    # "status":Z
    :goto_0
    return-void
.end method
