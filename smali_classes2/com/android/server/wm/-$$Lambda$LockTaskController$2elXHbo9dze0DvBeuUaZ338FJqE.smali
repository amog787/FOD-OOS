.class public final synthetic Lcom/android/server/wm/-$$Lambda$LockTaskController$2elXHbo9dze0DvBeuUaZ338FJqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field private final synthetic f$1:Lcom/android/server/wm/TaskRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/TaskRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$2elXHbo9dze0DvBeuUaZ338FJqE;->f$0:Lcom/android/server/wm/LockTaskController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$2elXHbo9dze0DvBeuUaZ338FJqE;->f$1:Lcom/android/server/wm/TaskRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$2elXHbo9dze0DvBeuUaZ338FJqE;->f$0:Lcom/android/server/wm/LockTaskController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$2elXHbo9dze0DvBeuUaZ338FJqE;->f$1:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LockTaskController;->lambda$removeLockedTask$0$LockTaskController(Lcom/android/server/wm/TaskRecord;)V

    return-void
.end method
