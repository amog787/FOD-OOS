.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$_QIa0JiksaMBecXbVJ_nhUm9TCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$_QIa0JiksaMBecXbVJ_nhUm9TCg;->f$0:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$_QIa0JiksaMBecXbVJ_nhUm9TCg;->f$0:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$new$7(Ljava/util/function/BiConsumer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
