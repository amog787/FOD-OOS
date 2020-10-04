.class Lcom/android/server/connectivity/Tethering$TetherState;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TetherState"
.end annotation


# instance fields
.field public final ipServer:Landroid/net/ip/IpServer;

.field public lastError:I

.field public lastState:I


# direct methods
.method public constructor <init>(Landroid/net/ip/IpServer;)V
    .locals 1
    .param p1, "ipServer"    # Landroid/net/ip/IpServer;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    .line 170
    return-void
.end method


# virtual methods
.method public isCurrentlyServing()Z
    .locals 2

    .line 173
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
