.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onGetRuntimePermissionsBackup([B)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
