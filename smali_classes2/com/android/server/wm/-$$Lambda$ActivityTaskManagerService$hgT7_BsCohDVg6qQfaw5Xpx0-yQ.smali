.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$postFinishBooting$7$ActivityTaskManagerService(ZZ)V

    return-void
.end method
