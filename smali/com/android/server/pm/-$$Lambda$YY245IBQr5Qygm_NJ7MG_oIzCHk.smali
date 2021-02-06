.class public final synthetic Lcom/android/server/pm/-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$YY245IBQr5Qygm_NJ7MG_oIzCHk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
