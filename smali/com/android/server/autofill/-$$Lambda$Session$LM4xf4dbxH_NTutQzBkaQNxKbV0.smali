.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/Session;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/content/IntentSender;

    check-cast p4, Landroid/content/Intent;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->lambda$LM4xf4dbxH_NTutQzBkaQNxKbV0(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
