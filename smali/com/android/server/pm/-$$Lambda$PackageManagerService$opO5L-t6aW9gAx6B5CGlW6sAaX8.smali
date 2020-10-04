.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$opO5L-t6aW9gAx6B5CGlW6sAaX8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/pm/IDexModuleRegisterCallback;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$opO5L-t6aW9gAx6B5CGlW6sAaX8;->f$0:Landroid/content/pm/IDexModuleRegisterCallback;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$opO5L-t6aW9gAx6B5CGlW6sAaX8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$opO5L-t6aW9gAx6B5CGlW6sAaX8;->f$2:Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$opO5L-t6aW9gAx6B5CGlW6sAaX8;->f$0:Landroid/content/pm/IDexModuleRegisterCallback;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$opO5L-t6aW9gAx6B5CGlW6sAaX8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$opO5L-t6aW9gAx6B5CGlW6sAaX8;->f$2:Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$registerDexModule$3(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V

    return-void
.end method
