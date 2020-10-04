.class public final synthetic Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceBuilderFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final make(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    return-object v0
.end method
