.class final Lcom/android/server/pm/ComponentResolver$ReceiverIntentResolver;
.super Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiverIntentResolver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1588
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ComponentResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/ComponentResolver$1;

    .line 1588
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ReceiverIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getResolveList(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1592
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
