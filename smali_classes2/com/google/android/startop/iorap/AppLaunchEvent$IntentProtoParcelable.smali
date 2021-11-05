.class public Lcom/google/android/startop/iorap/AppLaunchEvent$IntentProtoParcelable;
.super Ljava/lang/Object;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentProtoParcelable"
.end annotation


# static fields
.field private static final INTENT_PROTO_CHUNK_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Parcel;)Landroid/content/Intent;
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;

    .line 453
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 456
    .local v0, "data":[B
    new-instance v1, Landroid/content/Intent;

    const-string v2, "<cannot deserialize IntentProto>"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static write(Landroid/os/Parcel;Landroid/content/Intent;I)V
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 439
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 442
    .local v0, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 443
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    .line 445
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 446
    return-void
.end method
