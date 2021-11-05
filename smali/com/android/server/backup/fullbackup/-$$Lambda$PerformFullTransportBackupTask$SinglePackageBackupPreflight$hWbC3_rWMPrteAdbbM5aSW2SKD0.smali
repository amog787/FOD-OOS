.class public final synthetic Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$SinglePackageBackupPreflight$hWbC3_rWMPrteAdbbM5aSW2SKD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/remote/RemoteCallable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

.field public final synthetic f$1:Landroid/app/IBackupAgent;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/app/IBackupAgent;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$SinglePackageBackupPreflight$hWbC3_rWMPrteAdbbM5aSW2SKD0;->f$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$SinglePackageBackupPreflight$hWbC3_rWMPrteAdbbM5aSW2SKD0;->f$1:Landroid/app/IBackupAgent;

    iput-wide p3, p0, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$SinglePackageBackupPreflight$hWbC3_rWMPrteAdbbM5aSW2SKD0;->f$2:J

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$SinglePackageBackupPreflight$hWbC3_rWMPrteAdbbM5aSW2SKD0;->f$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$SinglePackageBackupPreflight$hWbC3_rWMPrteAdbbM5aSW2SKD0;->f$1:Landroid/app/IBackupAgent;

    iget-wide v2, p0, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$SinglePackageBackupPreflight$hWbC3_rWMPrteAdbbM5aSW2SKD0;->f$2:J

    check-cast p1, Landroid/app/backup/IBackupCallback;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->lambda$preflightFullBackup$0$PerformFullTransportBackupTask$SinglePackageBackupPreflight(Landroid/app/IBackupAgent;JLandroid/app/backup/IBackupCallback;)V

    return-void
.end method
