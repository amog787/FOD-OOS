.class Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredDeviceConnectionState"
.end annotation


# instance fields
.field public final mAddress:Ljava/lang/String;

.field public final mCaller:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mState:I

.field public final mType:I

.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioDeviceInventory;
    .param p2, "type"    # I
    .param p3, "state"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "caller"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->this$0:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    .line 144
    iput p3, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 145
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    .line 147
    iput-object p6, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 148
    return-void
.end method
