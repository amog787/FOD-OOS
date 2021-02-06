.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;

.field public final synthetic f$1:Landroid/accounts/AccountAndUser;

.field public final synthetic f$10:I

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:I

.field public final synthetic f$7:J

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$0:Lcom/android/server/content/SyncManager;

    iput-object p2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$1:Landroid/accounts/AccountAndUser;

    iput p3, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$2:I

    iput p4, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$3:I

    iput-object p5, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$5:Landroid/os/Bundle;

    iput p7, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$6:I

    iput-wide p8, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$7:J

    iput p10, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$8:I

    iput p11, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$9:I

    iput p12, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$10:I

    iput-object p13, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$11:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$1:Landroid/accounts/AccountAndUser;

    iget v2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$2:I

    iget v3, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$3:I

    iget-object v4, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$5:Landroid/os/Bundle;

    iget v6, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$6:I

    iget-wide v7, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$7:J

    iget v9, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$8:I

    iget v10, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$9:I

    iget v11, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$10:I

    iget-object v12, p0, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;->f$11:Ljava/lang/String;

    move-object v13, p1

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->lambda$scheduleSync$4$SyncManager(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
