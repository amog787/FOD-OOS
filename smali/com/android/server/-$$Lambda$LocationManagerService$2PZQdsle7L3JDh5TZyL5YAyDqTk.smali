.class public final synthetic Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;->f$0:Lcom/android/server/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;->f$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationManagerService;->lambda$initializeLocked$3$LocationManagerService(I)V

    return-void
.end method
