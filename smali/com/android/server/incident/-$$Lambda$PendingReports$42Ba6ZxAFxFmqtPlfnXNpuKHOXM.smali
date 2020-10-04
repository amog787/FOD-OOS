.class public final synthetic Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:I

.field private final synthetic f$6:Landroid/os/IIncidentAuthListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$0:Lcom/android/server/incident/PendingReports;

    iput p2, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$1:I

    iput-object p3, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$5:I

    iput-object p7, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$6:Landroid/os/IIncidentAuthListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$0:Lcom/android/server/incident/PendingReports;

    iget v1, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$1:I

    iget-object v2, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$5:I

    iget-object v6, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;->f$6:Landroid/os/IIncidentAuthListener;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/incident/PendingReports;->lambda$authorizeReport$0$PendingReports(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    return-void
.end method
