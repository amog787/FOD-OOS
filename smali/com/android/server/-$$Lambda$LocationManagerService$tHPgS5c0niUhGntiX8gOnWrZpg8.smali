.class public final synthetic Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;->f$0:Lcom/android/server/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;->f$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LocationManagerService;->lambda$initializeLocked$5$LocationManagerService(II)V

    return-void
.end method
