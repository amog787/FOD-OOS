.class public final synthetic Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;

.field private final synthetic f$1:J

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;->f$0:Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;

    iput-wide p2, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;->f$1:J

    iput-object p4, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;->f$0:Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;

    iget-wide v1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;->f$1:J

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->lambda$setInterfaceQuota$1$OffloadController$OffloadTetheringStatsProvider(JLjava/lang/String;)V

    return-void
.end method
