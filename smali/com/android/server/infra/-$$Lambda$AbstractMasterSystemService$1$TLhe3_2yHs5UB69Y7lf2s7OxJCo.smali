.class public final synthetic Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$1$TLhe3_2yHs5UB69Y7lf2s7OxJCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$1$TLhe3_2yHs5UB69Y7lf2s7OxJCo;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$1$TLhe3_2yHs5UB69Y7lf2s7OxJCo;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-static {v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->lambda$handlePackageUpdateLocked$0(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V

    return-void
.end method
