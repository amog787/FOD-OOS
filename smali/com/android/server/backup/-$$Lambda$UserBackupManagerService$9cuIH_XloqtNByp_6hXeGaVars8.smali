.class public final synthetic Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/transport/OnTransportRegisteredListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    return-void
.end method


# virtual methods
.method public final onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->lambda$9cuIH_XloqtNByp_6hXeGaVars8(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
