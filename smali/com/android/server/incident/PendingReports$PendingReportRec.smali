.class final Lcom/android/server/incident/PendingReports$PendingReportRec;
.super Ljava/lang/Object;
.source "PendingReports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/incident/PendingReports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingReportRec"
.end annotation


# instance fields
.field public addedRealtime:J

.field public addedWalltime:J

.field public callingPackage:Ljava/lang/String;

.field public flags:I

.field public id:I

.field public listener:Landroid/os/IIncidentAuthListener;

.field public receiverClass:Ljava/lang/String;

.field public reportId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/incident/PendingReports;


# direct methods
.method constructor <init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 2
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "receiverClass"    # Ljava/lang/String;
    .param p4, "reportId"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 85
    iput-object p1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->this$0:Lcom/android/server/incident/PendingReports;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/android/server/incident/PendingReports;->access$008(Lcom/android/server/incident/PendingReports;)I

    move-result p1

    iput p1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    .line 87
    iput-object p2, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->callingPackage:Ljava/lang/String;

    .line 88
    iput p5, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->flags:I

    .line 89
    iput-object p6, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedRealtime:J

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    .line 92
    iput-object p3, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->receiverClass:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->reportId:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method getUri()Landroid/net/Uri;
    .locals 3

    .line 100
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 101
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 102
    const-string v1, "android.os.IncidentManager"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 103
    const-string v1, "/pending"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->callingPackage:Ljava/lang/String;

    .line 105
    const-string/jumbo v2, "pkg"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->flags:I

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string/jumbo v2, "t"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 109
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->receiverClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->receiverClass:Ljava/lang/String;

    const-string/jumbo v2, "receiver"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->reportId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$PendingReportRec;->reportId:Ljava/lang/String;

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
