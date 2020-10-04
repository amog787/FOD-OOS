.class public final synthetic Lcom/android/server/job/-$$Lambda$JobConcurrencyManager$5dmb0pQscXPwEG6SBnhs7aCwpSs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/JobConcurrencyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobConcurrencyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/-$$Lambda$JobConcurrencyManager$5dmb0pQscXPwEG6SBnhs7aCwpSs;->f$0:Lcom/android/server/job/JobConcurrencyManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/-$$Lambda$JobConcurrencyManager$5dmb0pQscXPwEG6SBnhs7aCwpSs;->f$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager;->lambda$5dmb0pQscXPwEG6SBnhs7aCwpSs(Lcom/android/server/job/JobConcurrencyManager;)V

    return-void
.end method
