.class Lcom/android/server/am/ProcessStatsService$3;
.super Ljava/lang/Thread;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessStatsService;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$section:I

.field final synthetic val$stats:Lcom/android/internal/app/procstats/ProcessStats;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessStatsService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 609
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$3;->this$0:Lcom/android/server/am/ProcessStatsService;

    iput-object p3, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p5, p0, Lcom/android/server/am/ProcessStatsService$3;->val$section:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 612
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 613
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 614
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService$3;->val$stats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget v5, p0, Lcom/android/server/am/ProcessStatsService$3;->val$section:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 615
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 616
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v0    # "fout":Ljava/io/FileOutputStream;
    .end local v1    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProcessStatsService"

    const-string v2, "Failure writing pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
