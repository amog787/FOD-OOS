.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;->f$1:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;->f$1:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$applyUpdateVrModeLocked$5$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
