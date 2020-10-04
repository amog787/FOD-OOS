.class public final synthetic Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->lambda$parseLeftoverJournals$0$UserBackupManagerService(Ljava/lang/String;)V

    return-void
.end method
