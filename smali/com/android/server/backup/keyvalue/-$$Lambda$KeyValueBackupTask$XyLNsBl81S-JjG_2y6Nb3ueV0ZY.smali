.class public final synthetic Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/remote/RemoteCallable;


# instance fields
.field public final synthetic f$0:Landroid/app/IBackupAgent;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/app/IBackupAgent;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;->f$0:Landroid/app/IBackupAgent;

    iput-wide p2, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;->f$1:J

    iput-wide p4, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;->f$2:J

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;->f$0:Landroid/app/IBackupAgent;

    iget-wide v1, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;->f$1:J

    iget-wide v3, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$XyLNsBl81S-JjG_2y6Nb3ueV0ZY;->f$2:J

    move-object v5, p1

    check-cast v5, Landroid/app/backup/IBackupCallback;

    invoke-static/range {v0 .. v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->lambda$agentDoQuotaExceeded$1(Landroid/app/IBackupAgent;JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method
