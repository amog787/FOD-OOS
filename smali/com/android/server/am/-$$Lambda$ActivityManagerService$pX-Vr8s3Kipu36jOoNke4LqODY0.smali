.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$pX-Vr8s3Kipu36jOoNke4LqODY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$pX-Vr8s3Kipu36jOoNke4LqODY0;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$pX-Vr8s3Kipu36jOoNke4LqODY0;->f$1:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$pX-Vr8s3Kipu36jOoNke4LqODY0;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$pX-Vr8s3Kipu36jOoNke4LqODY0;->f$1:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->lambda$schedulePendingSystemServerWtfs$5$ActivityManagerService(Ljava/util/LinkedList;)V

    return-void
.end method
