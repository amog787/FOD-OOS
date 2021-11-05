.class public final synthetic Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentTasks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentTasks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;->f$0:Lcom/android/server/wm/RecentTasks;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Z9QEXZevRsInPMEXX0zFWg8YGMQ;->f$0:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    return-void
.end method
