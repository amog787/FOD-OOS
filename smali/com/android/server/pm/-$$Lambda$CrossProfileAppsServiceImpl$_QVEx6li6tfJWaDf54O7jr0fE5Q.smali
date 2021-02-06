.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$_QVEx6li6tfJWaDf54O7jr0fE5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$_QVEx6li6tfJWaDf54O7jr0fE5Q;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$_QVEx6li6tfJWaDf54O7jr0fE5Q;->f$1:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$_QVEx6li6tfJWaDf54O7jr0fE5Q;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$_QVEx6li6tfJWaDf54O7jr0fE5Q;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isManagedProfile$13$CrossProfileAppsServiceImpl(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
