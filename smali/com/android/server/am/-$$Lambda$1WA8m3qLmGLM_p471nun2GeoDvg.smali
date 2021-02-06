.class public final synthetic Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;->INSTANCE:Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;

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

    check-cast p1, Lcom/android/server/am/BaseErrorDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
