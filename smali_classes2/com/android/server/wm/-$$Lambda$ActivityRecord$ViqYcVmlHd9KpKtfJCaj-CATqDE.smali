.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityRecord$ViqYcVmlHd9KpKtfJCaj-CATqDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$ViqYcVmlHd9KpKtfJCaj-CATqDE;->f$0:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$ViqYcVmlHd9KpKtfJCaj-CATqDE;->f$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->lambda$restartProcessIfVisible$9$ActivityRecord()V

    return-void
.end method
