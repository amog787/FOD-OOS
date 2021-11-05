.class interface abstract Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;
.super Ljava/lang/Object;
.source "LmkdConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LmkdConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LmkdConnectionListener"
.end annotation


# virtual methods
.method public abstract handleUnsolicitedMessage(Ljava/nio/ByteBuffer;I)Z
.end method

.method public abstract isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
.end method

.method public abstract onConnect(Ljava/io/OutputStream;)Z
.end method

.method public abstract onDisconnect()V
.end method
