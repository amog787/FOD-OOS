.class public final synthetic Lcom/android/server/broadcastradio/hal1/-$$Lambda$-XcW_oxw3YwSco8d8bZQoqwUTnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$-XcW_oxw3YwSco8d8bZQoqwUTnM;->f$0:Lcom/android/server/broadcastradio/hal1/Tuner;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/-$$Lambda$-XcW_oxw3YwSco8d8bZQoqwUTnM;->f$0:Lcom/android/server/broadcastradio/hal1/Tuner;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    return-void
.end method
