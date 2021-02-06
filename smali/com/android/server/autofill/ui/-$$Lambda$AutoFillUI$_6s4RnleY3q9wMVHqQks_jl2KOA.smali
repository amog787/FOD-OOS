.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$10:Z

.field public final synthetic f$11:Z

.field public final synthetic f$2:Lcom/android/server/autofill/ui/PendingUi;

.field public final synthetic f$3:Ljava/lang/CharSequence;

.field public final synthetic f$4:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Landroid/content/ComponentName;

.field public final synthetic f$7:Landroid/service/autofill/SaveInfo;

.field public final synthetic f$8:Landroid/service/autofill/ValueFinder;

.field public final synthetic f$9:Landroid/metrics/LogMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$2:Lcom/android/server/autofill/ui/PendingUi;

    iput-object p4, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$3:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$4:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$6:Landroid/content/ComponentName;

    iput-object p8, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$7:Landroid/service/autofill/SaveInfo;

    iput-object p9, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$8:Landroid/service/autofill/ValueFinder;

    iput-object p10, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$9:Landroid/metrics/LogMaker;

    iput-boolean p11, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$10:Z

    iput-boolean p12, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$11:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v2, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$2:Lcom/android/server/autofill/ui/PendingUi;

    iget-object v3, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$3:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$4:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$6:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$7:Landroid/service/autofill/SaveInfo;

    iget-object v8, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$8:Landroid/service/autofill/ValueFinder;

    iget-object v9, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$9:Landroid/metrics/LogMaker;

    iget-boolean v10, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$10:Z

    iget-boolean v11, p0, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;->f$11:Z

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showSaveUi$6$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V

    return-void
.end method
