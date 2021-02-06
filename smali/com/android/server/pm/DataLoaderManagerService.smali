.class public Lcom/android/server/pm/DataLoaderManagerService;
.super Lcom/android/server/SystemService;
.source "DataLoaderManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;,
        Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataLoaderManager"


# instance fields
.field private final mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

.field private final mContext:Landroid/content/Context;

.field private mServiceConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 53
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    invoke-direct {v0, p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;-><init>(Lcom/android/server/pm/DataLoaderManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/DataLoaderManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/DataLoaderManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    const-string v1, "dataloader_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/DataLoaderManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    return-void
.end method
