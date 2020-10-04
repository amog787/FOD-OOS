.class public final synthetic Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6DEhn1zqxqV5_Ytb_NyzMW23Ano;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final make()Landroid/view/Surface;
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    return-object v0
.end method
