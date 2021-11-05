.class public final synthetic Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;

    invoke-direct {v0}, Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;-><init>()V

    sput-object v0, Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;->INSTANCE:Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {p1}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    return-void
.end method
