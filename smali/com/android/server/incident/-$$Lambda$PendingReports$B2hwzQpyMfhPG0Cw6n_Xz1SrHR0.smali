.class public final synthetic Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:Landroid/os/IIncidentAuthListener;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;->f$0:Lcom/android/server/incident/PendingReports;

    iput-object p2, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;->f$1:Landroid/os/IIncidentAuthListener;

    iput-object p3, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;->f$2:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;->f$3:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;->f$0:Lcom/android/server/incident/PendingReports;

    iget-object v1, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;->f$1:Landroid/os/IIncidentAuthListener;

    iget-object v2, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;->f$2:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/incident/PendingReports;->lambda$authorizeReportImpl$2$PendingReports(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    return-void
.end method
