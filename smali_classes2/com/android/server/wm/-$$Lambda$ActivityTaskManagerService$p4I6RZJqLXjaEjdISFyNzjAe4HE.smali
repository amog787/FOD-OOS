.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;->f$2:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;->f$2:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$applyUpdateLockStateLocked$0$ActivityTaskManagerService(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
