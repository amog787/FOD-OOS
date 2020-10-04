.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lcom/android/server/input/InputManagerService;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z

.field private final synthetic f$4:Lcom/android/server/policy/WindowManagerPolicy;

.field private final synthetic f$5:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final synthetic f$6:Lcom/android/server/wm/TransactionFactory;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$1:Lcom/android/server/input/InputManagerService;

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$4:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$5:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p7, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$6:Lcom/android/server/wm/TransactionFactory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$1:Lcom/android/server/input/InputManagerService;

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$3:Z

    iget-object v4, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$4:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$5:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$wGh8jzmWqrd_7ruovSXZoiIk1s0;->f$6:Lcom/android/server/wm/TransactionFactory;

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->lambda$main$0(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TransactionFactory;)V

    return-void
.end method
