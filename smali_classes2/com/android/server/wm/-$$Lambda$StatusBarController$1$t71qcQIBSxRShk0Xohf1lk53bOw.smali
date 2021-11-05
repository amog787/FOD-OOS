.class public final synthetic Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/StatusBarController$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/StatusBarController$1;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;->f$0:Lcom/android/server/wm/StatusBarController$1;

    iput-wide p2, p0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;->f$1:J

    iput-wide p4, p0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;->f$0:Lcom/android/server/wm/StatusBarController$1;

    iget-wide v1, p0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;->f$1:J

    iget-wide v3, p0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;->f$2:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/StatusBarController$1;->lambda$onAppTransitionStartingLocked$3$StatusBarController$1(JJ)V

    return-void
.end method
