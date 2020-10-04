.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final synthetic f$1:Lcom/android/server/wm/ActivityStack;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;->f$1:Lcom/android/server/wm/ActivityStack;

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;->f$1:Lcom/android/server/wm/ActivityStack;

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->lambda$moveTasksToFullscreenStackLocked$1$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;IZ)V

    return-void
.end method
