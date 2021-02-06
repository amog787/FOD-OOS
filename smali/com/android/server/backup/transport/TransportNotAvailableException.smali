.class public Lcom/android/server/backup/transport/TransportNotAvailableException;
.super Landroid/util/AndroidException;
.source "TransportNotAvailableException.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    const-string v0, "Transport not available"

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
