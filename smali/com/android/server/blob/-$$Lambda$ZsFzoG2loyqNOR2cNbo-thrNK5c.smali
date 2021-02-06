.class public final synthetic Lcom/android/server/blob/-$$Lambda$ZsFzoG2loyqNOR2cNbo-thrNK5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$ZsFzoG2loyqNOR2cNbo-thrNK5c;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$ZsFzoG2loyqNOR2cNbo-thrNK5c;->f$0:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method
