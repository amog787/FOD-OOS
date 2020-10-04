.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$Ofxsu0zvrpKfv2Cf4dVk1yXm2uI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$Ofxsu0zvrpKfv2Cf4dVk1yXm2uI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$Ofxsu0zvrpKfv2Cf4dVk1yXm2uI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$Ofxsu0zvrpKfv2Cf4dVk1yXm2uI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$Ofxsu0zvrpKfv2Cf4dVk1yXm2uI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$Ofxsu0zvrpKfv2Cf4dVk1yXm2uI;

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

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/InsetsStateController;->lambda$addToControlMaps$2(Lcom/android/server/wm/WindowState;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
