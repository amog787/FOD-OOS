.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;->f$2:I

    iput p4, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;->f$2:I

    iget v3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$tXd1Af3yqns6wmZqxn7GMaUn-I4;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isPackageInstalled$6$CrossProfileAppsServiceImpl(Ljava/lang/String;II)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
