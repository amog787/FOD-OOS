.class final Lcom/android/server/audio/AudioService$AudioDeviceArray;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioDeviceArray"
.end annotation


# instance fields
.field final mDeviceAddresses:[Ljava/lang/String;

.field final mDeviceTypes:[I


# direct methods
.method constructor <init>([I[Ljava/lang/String;)V
    .locals 0
    .param p1, "types"    # [I
    .param p2, "addresses"    # [Ljava/lang/String;

    .line 8694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8695
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    .line 8696
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    .line 8697
    return-void
.end method
