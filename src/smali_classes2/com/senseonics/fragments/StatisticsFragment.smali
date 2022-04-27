.class public Lcom/senseonics/fragments/StatisticsFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "StatisticsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final ITEM_COUNT:I = 0x3


# instance fields
.field private adapter:Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

.field private shareButton:Landroid/widget/ImageView;

.field private statisticsChartFragment:Lcom/senseonics/fragments/StatisticsPieChartFragment;

.field private statisticsListFragment:Lcom/senseonics/fragments/StatisticsListFragment;

.field private statisticsWeeklyGraphFragment:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

.field private stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->adapter:Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/StatisticsFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/util/StepPagerStrip;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsPieChartFragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsChartFragment:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    return-object p0
.end method

.method static synthetic access$302(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsPieChartFragment;)Lcom/senseonics/fragments/StatisticsPieChartFragment;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsChartFragment:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsListFragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsListFragment:Lcom/senseonics/fragments/StatisticsListFragment;

    return-object p0
.end method

.method static synthetic access$402(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsListFragment;)Lcom/senseonics/fragments/StatisticsListFragment;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsListFragment:Lcom/senseonics/fragments/StatisticsListFragment;

    return-object p1
.end method

.method static synthetic access$500(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsWeeklyGraphFragment:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    return-object p0
.end method

.method static synthetic access$502(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsWeeklyGraphFragment:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    return-object p1
.end method

.method private getCurrentSelectedStatisticsFragment()Lcom/senseonics/fragments/BaseStatisticsFragment;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    invoke-virtual {v0}, Lcom/senseonics/util/StepPagerStrip;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsListFragment:Lcom/senseonics/fragments/StatisticsListFragment;

    return-object v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsChartFragment:Lcom/senseonics/fragments/StatisticsPieChartFragment;

    return-object v0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->statisticsWeeklyGraphFragment:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    return-object v0
.end method


# virtual methods
.method public createShareDialog()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getCurrentSelectedStatisticsFragment()Lcom/senseonics/fragments/BaseStatisticsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->formShareEmail()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0c0083

    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09039b

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 40
    new-instance p2, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;-><init>(Lcom/senseonics/fragments/StatisticsFragment;Landroid/app/FragmentManager;)V

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->adapter:Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;

    .line 41
    iget-object p3, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const p2, 0x7f090301

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/senseonics/util/StepPagerStrip;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    .line 44
    new-instance p3, Lcom/senseonics/fragments/StatisticsFragment$1;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/StatisticsFragment$1;-><init>(Lcom/senseonics/fragments/StatisticsFragment;)V

    .line 45
    invoke-virtual {p2, p3}, Lcom/senseonics/util/StepPagerStrip;->setOnPageSelectedListener(Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;)V

    .line 55
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p3, Lcom/senseonics/fragments/StatisticsFragment$2;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/StatisticsFragment$2;-><init>(Lcom/senseonics/fragments/StatisticsFragment;)V

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 84
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 86
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->stepPagerStrip:Lcom/senseonics/util/StepPagerStrip;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/senseonics/util/StepPagerStrip;->setPageCount(I)V

    .line 87
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onDetach()V

    .line 125
    :try_start_0
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onResume()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_1
    return-void

    .line 97
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public setShareButton(Landroid/widget/ImageView;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment;->shareButton:Landroid/widget/ImageView;

    return-void
.end method

.method protected setShareButtonEnabled(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->shareButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsFragment;->shareButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3e800000    # 0.25f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method
