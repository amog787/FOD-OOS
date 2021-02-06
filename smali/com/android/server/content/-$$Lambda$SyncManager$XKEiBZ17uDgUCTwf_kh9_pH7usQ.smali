.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/content/SyncManager$OnReadyCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;

.field public final synthetic f$1:Landroid/accounts/AccountAndUser;

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$0:Lcom/android/server/content/SyncManager;

    iput-object p2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$1:Landroid/accounts/AccountAndUser;

    iput p3, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$2:I

    iput-object p4, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$4:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$5:I

    iput-wide p7, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$6:J

    iput p9, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$7:I

    iput p10, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$8:I

    iput p11, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$9:I

    iput-object p12, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$10:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReady()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$1:Landroid/accounts/AccountAndUser;

    iget v2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$2:I

    iget-object v3, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$4:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$5:I

    iget-wide v6, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$6:J

    iget v8, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$7:I

    iget v9, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$8:I

    iget v10, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$9:I

    iget-object v11, p0, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;->f$10:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/content/SyncManager;->lambda$scheduleSync$5$SyncManager(Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    return-void
.end method
