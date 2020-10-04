.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/dex/DexManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/dex/DexManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;->f$0:Lcom/android/server/pm/dex/DexManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;->f$0:Lcom/android/server/pm/dex/DexManager;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$3(Lcom/android/server/pm/dex/DexManager;Landroid/content/pm/PackageParser$Package;)Z

    move-result p1

    return p1
.end method
