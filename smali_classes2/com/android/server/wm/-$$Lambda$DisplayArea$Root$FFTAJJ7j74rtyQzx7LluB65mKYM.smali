.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM;

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

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Root;->lambda$prepareSurfaces$0(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
