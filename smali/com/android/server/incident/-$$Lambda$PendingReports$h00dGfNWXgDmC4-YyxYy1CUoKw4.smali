.class public final synthetic Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field private final synthetic f$1:Landroid/os/IIncidentAuthListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;->f$0:Lcom/android/server/incident/PendingReports;

    iput-object p2, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;->f$1:Landroid/os/IIncidentAuthListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;->f$0:Lcom/android/server/incident/PendingReports;

    iget-object v1, p0, Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;->f$1:Landroid/os/IIncidentAuthListener;

    invoke-virtual {v0, v1}, Lcom/android/server/incident/PendingReports;->lambda$cancelAuthorization$1$PendingReports(Landroid/os/IIncidentAuthListener;)V

    return-void
.end method
