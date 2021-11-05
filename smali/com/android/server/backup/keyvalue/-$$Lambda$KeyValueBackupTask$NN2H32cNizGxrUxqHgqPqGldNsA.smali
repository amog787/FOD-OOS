.class public final synthetic Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/remote/RemoteCallable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

.field public final synthetic f$1:Landroid/app/IBackupAgent;

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;->f$0:Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;->f$1:Landroid/app/IBackupAgent;

    iput-wide p3, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;->f$2:J

    iput p5, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;->f$3:I

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;->f$0:Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;->f$1:Landroid/app/IBackupAgent;

    iget-wide v2, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;->f$2:J

    iget v4, p0, Lcom/android/server/backup/keyvalue/-$$Lambda$KeyValueBackupTask$NN2H32cNizGxrUxqHgqPqGldNsA;->f$3:I

    move-object v5, p1

    check-cast v5, Landroid/app/backup/IBackupCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->lambda$extractAgentData$0$KeyValueBackupTask(Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V

    return-void
.end method
